.class Lorg/telegram/ui/DialogsActivity$ContentView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field private actionBarSearchPaint:Landroid/graphics/Paint;

.field private blurBounds:Landroid/graphics/Rect;

.field private pos:[I

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$dquVkLia2R6pmhAWrOQcQ3yuXa4(Lorg/telegram/ui/DialogsActivity$ContentView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$zbj7n0I-PeYJQHyxrW0sSOyl61g(Lorg/telegram/ui/DialogsActivity$ContentView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->lambda$onMeasure$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetTabsSwipeTracking(Lorg/telegram/ui/DialogsActivity$ContentView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->resetTabsSwipeTracking()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 774
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 771
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    .line 782
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->pos:[I

    .line 893
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectAnimatedEmojiDialog(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$1()V
    .locals 7

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/FilterTabsView;->getNextPageId(Z)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 790
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 791
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetadditionalOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    .line 793
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 794
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fputselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;I)V

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputanimatingForward(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mshowScrollbars(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    if-eqz p2, :cond_1

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    goto :goto_0

    .line 803
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    :goto_0
    return v3
.end method

.method private resetTabsSwipeTracking()V
    .locals 6

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 817
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 828
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mshowScrollbars(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkTabsAnimationInProgress()Z
    .locals 7

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimationInProgress(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetbackAnimation(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v5

    :cond_0
    mul-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    goto :goto_1

    .line 849
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    mul-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 855
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mshowScrollbars(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsAnimation(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)V

    .line 860
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsAnimationInProgress(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 862
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimationInProgress(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    return v0

    :cond_5
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 961
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 962
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/DialogsActivity;)V

    .line 965
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    const/4 v7, 0x1

    const/high16 v6, 0x42a20000    # 81.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-nez v1, :cond_d

    .line 966
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 967
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v7

    goto :goto_0

    :cond_2
    move v1, v8

    .line 968
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v8

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    .line 969
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 970
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetwaitingForScrollFinished(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v1, v8

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    .line 974
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 976
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 977
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_5

    .line 979
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_2

    .line 980
    :cond_5
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v5, v10

    if-gt v4, v5, :cond_6

    .line 981
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_2

    .line 982
    :cond_6
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 983
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 985
    :cond_7
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v1, v7, :cond_8

    goto :goto_1

    .line 992
    :cond_8
    :goto_3
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 994
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v2, v1

    cmpl-float v1, v2, v9

    if-ltz v1, :cond_b

    .line 996
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetMaxScrollYOffset(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    neg-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v3, v2, v1

    if-gez v3, :cond_9

    move v2, v1

    goto :goto_4

    :cond_9
    cmpl-float v1, v2, v9

    if-lez v1, :cond_a

    move v2, v9

    .line 1003
    :cond_a
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetScrollY(Lorg/telegram/ui/DialogsActivity;F)V

    goto :goto_5

    .line 1005
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetScrollY(Lorg/telegram/ui/DialogsActivity;F)V

    goto :goto_5

    .line 1008
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetMaxScrollYOffset(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetScrollY(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1011
    :cond_d
    :goto_5
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v1

    .line 1013
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1014
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    move v10, v2

    goto :goto_7

    .line 1016
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarTop()I

    move-result v2

    goto :goto_6

    .line 1018
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    add-int v11, v10, v1

    invoke-virtual {v2, v11}, Lorg/telegram/ui/RightSlidingDialogContainer;->setCurrentTop(I)V

    .line 1020
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/DialogsActivity;->whiteActionBar:Z

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v2, :cond_17

    .line 1021
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-nez v1, :cond_f

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 1023
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-nez v1, :cond_10

    .line 1024
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1025
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetSearchFieldAdditionOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1028
    :cond_10
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v11, v3

    invoke-virtual {v1, v8, v10, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1029
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_12

    .line 1030
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    :goto_9
    move-object v4, v1

    goto :goto_a

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetactionBarDefaultPaint(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_9

    :goto_a
    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$ContentView;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1032
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpg-float v1, v1, v13

    if-gez v1, :cond_16

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1034
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchIsShowed(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchWasFullyShowed(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_b

    .line 1036
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v11, v3

    invoke-virtual {v1, v8, v10, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1037
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$ContentView;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1039
    :cond_14
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1040
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_c

    :cond_15
    move v3, v8

    :goto_c
    add-int/2addr v2, v3

    sub-int v2, v11, v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetSearchFieldAdditionOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_16
    move-object/from16 v1, p1

    :goto_d
    move-object v10, v0

    goto :goto_e

    .line 1043
    :cond_17
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1044
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_18

    .line 1045
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v11, v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1047
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$ContentView;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto :goto_d

    .line 1049
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v11, v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1050
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->blurBounds:Landroid/graphics/Rect;

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetactionBarDefaultPaint(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$ContentView;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto :goto_d

    .line 1053
    :goto_e
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1054
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstoriesYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1055
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetSearchFieldHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    .line 1056
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    .line 1057
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_19

    move v4, v6

    goto :goto_f

    :cond_19
    move v4, v9

    :goto_f
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    .line 1058
    iget-object v12, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v12, v12, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v12, :cond_1a

    move v12, v6

    goto :goto_10

    :cond_1a
    move v12, v9

    :goto_10
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v0

    int-to-float v12, v12

    mul-float/2addr v5, v12

    .line 1056
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1060
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstoriesYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1061
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1062
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v3, v3, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 1064
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetMaxScrollYOffset(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    int-to-float v5, v5

    iget-object v12, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v12

    add-float/2addr v5, v12

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1065
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstoriesYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1066
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCellVisible:Z

    if-eqz v2, :cond_1b

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v2, v3, v2

    .line 1067
    invoke-static {v2, v13, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    sub-float v2, v13, v2

    goto :goto_11

    :cond_1b
    move v2, v13

    .line 1069
    :goto_11
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1c

    .line 1070
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    iget-object v12, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatorFilterTabsVisible(Lorg/telegram/ui/DialogsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v12

    invoke-virtual {v12}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v12

    sub-float v12, v13, v12

    iget-object v14, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v14}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v12, v14

    sub-float/2addr v5, v12

    invoke-static {v4, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsYOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1072
    :cond_1c
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1073
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v4

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    iget-object v12, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v12

    add-float/2addr v5, v12

    iget-object v12, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v12, v12, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v12, :cond_1d

    move v12, v6

    goto :goto_12

    :cond_1d
    move v12, v9

    :goto_12
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-static {v5, v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetSearchFieldAdditionOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1076
    :cond_1e
    iget-object v3, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetrightFragmentTransitionInProgress(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1077
    iget-object v3, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetrightFragmentTransitionIsOpen(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v9

    goto :goto_13

    :cond_1f
    iget-object v3, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    :goto_13
    neg-float v4, v3

    .line 1078
    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetrightFragmentTransitionIsOpen(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcanShowFilterTabsView(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/high16 v5, 0x42480000    # 50.0f

    goto :goto_14

    :cond_20
    move v5, v9

    :goto_14
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, v5, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v5, v5, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    neg-float v3, v3

    goto :goto_15

    :cond_21
    move v3, v9

    .line 1081
    :goto_15
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_22

    .line 1082
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v9

    goto :goto_16

    :cond_22
    move v4, v9

    :goto_16
    int-to-float v0, v0

    add-float/2addr v4, v0

    .line 1085
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v5, v5, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    mul-float/2addr v4, v5

    .line 1087
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v8

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationY(F)V

    goto :goto_18

    .line 1089
    :cond_23
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1090
    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v2

    iget-object v3, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    .line 1091
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1092
    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_24

    goto :goto_17

    :cond_24
    move v6, v9

    :goto_17
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    .line 1090
    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_25
    move v2, v13

    .line 1097
    :goto_18
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateContextViewPosition(Lorg/telegram/ui/DialogsActivity;)V

    .line 1098
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateStoriesViewAlpha(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1099
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1100
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1, v11}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mdrawHeaderShadow(Lorg/telegram/ui/DialogsActivity;Landroid/graphics/Canvas;I)V

    .line 1119
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 1120
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_26

    .line 1121
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_27

    .line 1122
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/16 v6, 0x1f

    move-object v15, v1

    move v1, v0

    move-object v0, v15

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v1, v0

    .line 1123
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1124
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1125
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_19

    .line 1128
    :cond_26
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1131
    :cond_27
    :goto_19
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity;->hasMainTabs:Z

    if-nez v2, :cond_28

    .line 1132
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    iget-object v2, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    invoke-static {v1, v10, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;II)V

    .line 1134
    :cond_28
    iget-object v0, v10, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputwasDrawn(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 7

    .line 941
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p5, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p5}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->checkBlurEnabled(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p5

    if-nez p5, :cond_1

    :cond_0
    move-object v2, p1

    goto :goto_2

    .line 946
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p5}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p5}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    invoke-interface {p5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p5

    if-nez p5, :cond_3

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p5

    if-nez p5, :cond_3

    :goto_0
    const/16 p5, 0xd8

    goto :goto_1

    :cond_3
    const/16 p5, 0xb2

    .line 948
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    neg-float v1, p2

    .line 949
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v4, v0, p2

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float v6, v0, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 951
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 953
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    .line 954
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 955
    invoke-virtual {v2, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 956
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 942
    :goto_2
    invoke-virtual {v2, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 900
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawingBlur:Z

    if-eqz v0, :cond_1

    .line 901
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 904
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    const v4, 0x3d4ccccd    # 0.05f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eq p2, v0, :cond_7

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v0

    if-eq p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-ne p2, v0, :cond_3

    goto :goto_1

    .line 922
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_6

    .line 923
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentLite:Z

    if-eqz v1, :cond_4

    .line 925
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSlideAmplitude()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v1, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v6, v1

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 927
    :cond_4
    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float v0, v6, v0

    mul-float/2addr v0, v4

    sub-float v0, v6, v0

    .line 928
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v3, v3, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v6, v3

    mul-float/2addr v1, v6

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 929
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_5
    int-to-float v1, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v0, v5, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 931
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 932
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 934
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 905
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v0

    if-eq p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-ne p2, v0, :cond_8

    goto :goto_2

    .line 909
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 911
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    cmpl-float v2, v1, v6

    if-eqz v2, :cond_b

    .line 912
    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentLite:Z

    if-eqz v2, :cond_a

    .line 913
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getSlideAmplitude()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v1, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v6, v1

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_a
    sub-float v0, v6, v1

    mul-float/2addr v0, v4

    sub-float v0, v6, v0

    .line 916
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v2, v2, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v6, v2

    mul-float/2addr v1, v6

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v0, v5, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 920
    :cond_b
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 921
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method protected drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V
    .locals 0

    .line 1591
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchIsShowed(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1592
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 1593
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->drawForBlur(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getActionBarFullHeight()I
    .locals 5

    .line 868
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 870
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v1, v1, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 873
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    const/high16 v2, 0x42a20000    # 81.0f

    .line 874
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    .line 875
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    sub-float v4, v3, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 877
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v0, v2

    .line 878
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetSearchFieldHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method public getActionBarTop()I
    .locals 4

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    .line 886
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v1, v1, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 889
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    sub-float v1, v3, v1

    mul-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 890
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateBlur()V
    .locals 1

    .line 836
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method protected invalidateOptimized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1600
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstatusDrawable(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstatusDrawable(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1608
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstatusDrawable(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstatusDrawable(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputallowMoving(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1342
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isAnimatingIndicator()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .line 1238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 1241
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 1242
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_13

    .line 1245
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1246
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto/16 :goto_9

    .line 1249
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1251
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1252
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1257
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const/16 v7, 0x33

    :cond_1
    and-int/lit8 v8, v7, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    const/4 v9, 0x5

    if-eq v7, v9, :cond_2

    .line 1274
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v7, p4, v5

    .line 1270
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v7, v9

    goto :goto_2

    :cond_3
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    .line 1267
    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :goto_2
    const/16 v9, 0x10

    if-eq v8, v9, :cond_6

    const/16 v9, 0x30

    if-eq v8, v9, :cond_5

    const/16 v9, 0x50

    if-eq v8, v9, :cond_4

    .line 1288
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_4
    sub-int v8, p5, p3

    sub-int/2addr v8, v6

    .line 1285
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v4, v8, v4

    goto :goto_4

    .line 1279
    :cond_5
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_4

    :cond_6
    sub-int v8, p5, p3

    sub-int/2addr v8, v6

    .line 1282
    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 1291
    :goto_4
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v8

    const/high16 v9, 0x42400000    # 48.0f

    if-eq v3, v8, :cond_d

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchTabsAndFiltersLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SearchTabsAndFiltersLayout;

    move-result-object v8

    if-eq v3, v8, :cond_d

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v10, v8, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-ne v3, v10, :cond_7

    goto :goto_7

    .line 1311
    :cond_7
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v8

    if-ne v3, v8, :cond_8

    .line 1312
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetADDITIONAL_LIST_HEIGHT_DP(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    goto/16 :goto_8

    .line 1313
    :cond_8
    instance-of v8, v3, Lorg/telegram/ui/DatabaseMigrationHint;

    if-eqz v8, :cond_9

    .line 1314
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto/16 :goto_8

    .line 1315
    :cond_9
    instance-of v8, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;

    if-eqz v8, :cond_a

    move v4, v1

    goto/16 :goto_8

    .line 1317
    :cond_a
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v8

    if-eq v3, v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopBubblesFadeView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopBubblesFadeView;

    move-result-object v8

    if-eq v3, v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v8

    if-ne v3, v8, :cond_b

    goto :goto_5

    .line 1320
    :cond_b
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v8

    if-ne v8, v3, :cond_11

    goto/16 :goto_9

    .line 1318
    :cond_c
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v4, v8

    .line 1319
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_6
    add-int/2addr v4, v8

    goto/16 :goto_8

    .line 1292
    :cond_d
    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1293
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v8

    if-eq v3, v8, :cond_e

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v10, v8, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eq v3, v10, :cond_e

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchTabsAndFiltersLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SearchTabsAndFiltersLayout;

    move-result-object v8

    if-eq v3, v8, :cond_e

    .line 1294
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v4, v8

    .line 1299
    :cond_e
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v9, v8, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v9, :cond_f

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v8

    if-ne v3, v8, :cond_f

    const/high16 v8, 0x42a20000    # 81.0f

    .line 1300
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v4, v8

    .line 1302
    :cond_f
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-ne v3, v8, :cond_10

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 1303
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v8

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v4, v10

    add-int/2addr v10, v6

    add-int v11, v7, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v4, v9

    add-int/2addr v9, v6

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v12, v12, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v12}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v9, v12

    invoke-virtual {v8, v7, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 1305
    :cond_10
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchTabsAndFiltersLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SearchTabsAndFiltersLayout;

    .line 1308
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v8

    if-ne v3, v8, :cond_11

    const/high16 v8, 0x40000000    # 2.0f

    .line 1309
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto/16 :goto_6

    :cond_11
    :goto_8
    add-int/2addr v5, v7

    add-int/2addr v6, v4

    .line 1323
    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1326
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1327
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchViewPager;->setKeyboardHeight(I)V

    .line 1329
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 1330
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateFloatingButtonOffset(Lorg/telegram/ui/DialogsActivity;)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateContextViewPosition(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 1146
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1147
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v6, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 1150
    :goto_0
    invoke-virtual {v0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1152
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetdoneItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1153
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetdoneItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1154
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1155
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1158
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1160
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v11

    .line 1161
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_12

    .line 1164
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1165
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v1, v2, :cond_4

    :cond_3
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1168
    :cond_4
    instance-of v2, v1, Lorg/telegram/ui/DatabaseMigrationHint;

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    .line 1169
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1170
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 1171
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v14, v4

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v14, v4

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1172
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 1173
    :cond_5
    instance-of v2, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;

    const v14, 0x3d4ccccd    # 0.05f

    if-eqz v2, :cond_b

    .line 1174
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1175
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v7

    move/from16 v16, v3

    .line 1176
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1177
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcanShowFilterTabsView(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x42480000    # 50.0f

    .line 1178
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v15, v3

    .line 1180
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_7

    const/high16 v3, 0x42a20000    # 81.0f

    .line 1181
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v15, v3

    :cond_7
    const/high16 v3, 0x42400000    # 48.0f

    .line 1183
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v15, v3

    .line 1185
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetactionModeAdditionalHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    add-int/2addr v15, v3

    .line 1186
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetactionBarColorAnimator(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    .line 1187
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1189
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->isSlideBackTransition:Z

    if-eqz v3, :cond_a

    int-to-float v3, v15

    mul-float/2addr v3, v14

    float-to-int v3, v3

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v15, v3

    .line 1191
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    move/from16 v17, v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v1, v14, v4, v9, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1192
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1193
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v17

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_3

    :cond_b
    move/from16 v16, v3

    move/from16 v17, v4

    .line 1194
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 1195
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v3, v3, Lorg/telegram/ui/DialogsActivity;->searchViewPagerTranslationY:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1196
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/SearchViewPager;->postsSearchContainer:Lorg/telegram/ui/Components/PostsSearchContainer;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/PostsSearchContainer;->setKeyboardHeight(I)V

    .line 1197
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1198
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetADDITIONAL_LIST_HEIGHT_DP(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 1199
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1200
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_searchPagesPaddings(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1201
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1202
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v17

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1203
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetADDITIONAL_LIST_HEIGHT_DP(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_6

    :cond_c
    const/4 v9, 0x0

    .line 1204
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcommentView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcommentView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1205
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_e

    .line 1206
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1207
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v4, v7, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    add-int/2addr v4, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1209
    :cond_d
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v3, v7, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1212
    :cond_e
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1214
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-ne v1, v2, :cond_11

    .line 1215
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1216
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v3, Lorg/telegram/ui/DialogsActivity;->isSlideBackTransition:Z

    if-eqz v4, :cond_10

    int-to-float v4, v2

    mul-float/2addr v4, v14

    float-to-int v4, v4

    goto :goto_5

    :cond_10
    move v4, v9

    :goto_5
    add-int/2addr v2, v4

    .line 1218
    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/RightSlidingDialogContainer;->setTransitionPaddingBottom(I)V

    .line 1219
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_11
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    .line 1221
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1225
    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->wasPortrait:Z

    if-eq v10, v1, :cond_13

    .line 1226
    new-instance v1, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$ContentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1232
    iput-boolean v10, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->wasPortrait:Z

    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 1356
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    .line 1359
    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 1360
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 1361
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mdrawerContainer(Lorg/telegram/ui/DialogsActivity;)Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mdrawerContainer(Lorg/telegram/ui/DialogsActivity;)Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/drawer/DrawerContainer;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_29

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetinitialDialogsType(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 1368
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 1369
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v0

    if-ne v0, v2, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsType()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsType()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_29

    :cond_2
    if-eqz p1, :cond_4

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1374
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1376
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_8

    .line 1378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->checkTabsAnimationInProgress()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1379
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1380
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    .line 1381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    .line 1382
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1383
    iget v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 1384
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    goto/16 :goto_0

    .line 1386
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    .line 1387
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v5

    aput-object v8, v7, v1

    .line 1388
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aput-object v6, v7, v5

    .line 1389
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputanimatingForward(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1390
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1391
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 1392
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetadditionalOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 1393
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    .line 1394
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->resume()V

    .line 1395
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->pause()V

    goto/16 :goto_0

    .line 1398
    :cond_6
    iget v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 1399
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    .line 1400
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v5

    aput-object v8, v7, v1

    .line 1401
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aput-object v6, v7, v5

    .line 1402
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputanimatingForward(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1403
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1404
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 1405
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetadditionalOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    neg-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 1406
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    .line 1407
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->resume()V

    .line 1408
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->pause()V

    goto :goto_0

    .line 1410
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 1413
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1414
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1415
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsAnimationInProgress(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 1416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_9

    .line 1417
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    .line 1419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 1420
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    .line 1423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingY:I

    .line 1424
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_11

    :cond_a
    if-eqz p1, :cond_14

    .line 1425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v2, :cond_14

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_14

    .line 1426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetadditionalOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingY:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1428
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-gtz v0, :cond_c

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_f

    if-gez v0, :cond_f

    :cond_c
    if-gez v0, :cond_d

    move v3, v5

    goto :goto_2

    :cond_d
    move v3, v1

    .line 1429
    :goto_2
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/DialogsActivity$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1430
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1431
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1432
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 1433
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :goto_3
    int-to-float v6, v6

    goto :goto_4

    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 1434
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 1437
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1438
    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    .line 1439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 1440
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_28

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_28

    if-gez v0, :cond_10

    move v1, v5

    .line 1441
    :cond_10
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/DialogsActivity$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_11

    .line 1443
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 1444
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    int-to-float v2, v0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v5

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    goto :goto_5

    .line 1448
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v5

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationX(F)V

    .line 1450
    :goto_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetisLocked(Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result v0

    if-eqz v0, :cond_13

    cmpl-float v0, p1, v4

    if-lez v0, :cond_13

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 1452
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1453
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->shakeLock(I)V

    .line 1454
    new-instance p1, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$ContentView;)V

    const-wide/16 v2, 0xc8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 1459
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    goto/16 :goto_11

    :cond_14
    if-eqz p1, :cond_15

    .line 1462
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v3, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_28

    .line 1463
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetmaximumVelocity(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    int-to-float v7, v7

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_17

    .line 1466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v3, :cond_17

    .line 1467
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1468
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 1469
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1470
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getSwipeVelocity()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_18

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    cmpg-float v7, v3, v4

    if-gez v7, :cond_16

    move v7, v5

    goto :goto_6

    :cond_16
    move v7, v1

    .line 1471
    :goto_6
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/DialogsActivity$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_7

    :cond_17
    move v3, v4

    move v6, v3

    .line 1478
    :cond_18
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    .line 1480
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v7, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsAnimation(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)V

    .line 1481
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetisLocked(Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1482
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputbackAnimation(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_d

    .line 1484
    :cond_19
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetadditionalOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v7

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_20

    .line 1485
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1c

    .line 1486
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v7

    if-eqz v7, :cond_1b

    cmpl-float v7, v3, v4

    if-lez v7, :cond_1a

    :goto_8
    move v7, v5

    goto :goto_9

    :cond_1a
    move v7, v1

    goto :goto_9

    :cond_1b
    cmpg-float v7, v3, v4

    if-gez v7, :cond_1a

    goto :goto_8

    :goto_9
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputbackAnimation(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_d

    .line 1488
    :cond_1c
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1489
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    shr-int/2addr v8, v5

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1d

    move v7, v5

    goto :goto_a

    :cond_1d
    move v7, v1

    :goto_a
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputbackAnimation(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_d

    .line 1491
    :cond_1e
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    shr-int/2addr v8, v5

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1f

    move v7, v5

    goto :goto_b

    :cond_1f
    move v7, v1

    :goto_b
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputbackAnimation(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_d

    .line 1495
    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_22

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getSwipeVelocity()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_21

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v8, v6

    if-gez v6, :cond_22

    :cond_21
    move v6, v5

    goto :goto_c

    :cond_22
    move v6, v1

    :goto_c
    invoke-static {v7, v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputbackAnimation(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1499
    :goto_d
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetbackAnimation(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz v6, :cond_24

    .line 1500
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1501
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1502
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    new-array v9, v5, [F

    aput v4, v9, v1

    .line 1503
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v5

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v10

    aget-object v10, v10, v5

    .line 1504
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    new-array v11, v5, [F

    aput v10, v11, v1

    invoke-static {v9, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v1

    aput-object v7, v2, v5

    .line 1502
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_e

    .line 1507
    :cond_23
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    new-array v9, v5, [F

    aput v4, v9, v1

    .line 1508
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v5

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v10

    aget-object v10, v10, v5

    .line 1509
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    new-array v11, v5, [F

    aput v10, v11, v1

    invoke-static {v9, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v1

    aput-object v7, v2, v5

    .line 1507
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_e

    .line 1513
    :cond_24
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v6, p1

    .line 1514
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1515
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    .line 1516
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    new-array v10, v5, [F

    aput v9, v10, v1

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v5

    new-array v10, v5, [F

    aput v4, v10, v1

    .line 1517
    invoke-static {v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v1

    aput-object v7, v2, v5

    .line 1515
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    .line 1520
    :cond_25
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    .line 1521
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    new-array v10, v5, [F

    aput v9, v10, v1

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v5

    new-array v10, v5, [F

    aput v4, v10, v1

    .line 1522
    invoke-static {v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v8, v2, v1

    aput-object v7, v2, v5

    .line 1520
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1526
    :goto_e
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$sfgetinterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1528
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1529
    div-int/lit8 v6, v2, 0x2

    int-to-float v2, v2

    div-float v2, p1, v2

    .line 1530
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v6, v6

    .line 1531
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v6

    add-float/2addr v6, v2

    .line 1532
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_26

    div-float/2addr v6, v2

    .line 1535
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_f

    .line 1537
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_f
    const/16 v0, 0x258

    .line 1540
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x96

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/DialogsActivity$ContentView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$ContentView$1;-><init>(Lorg/telegram/ui/DialogsActivity$ContentView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1566
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettabsAnimation(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1567
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputtabsAnimationInProgress(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1568
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_10

    .line 1570
    :cond_27
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 1572
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1574
    :goto_10
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_28

    .line 1575
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1576
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1579
    :cond_28
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    return p1

    :cond_29
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetmaybeStartTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1348
    invoke-virtual {p0, v0}, Lorg/telegram/ui/DialogsActivity$ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1350
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
