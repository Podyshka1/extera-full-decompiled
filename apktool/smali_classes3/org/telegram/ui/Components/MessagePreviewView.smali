.class public abstract Lorg/telegram/ui/Components/MessagePreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/forward/ForwardContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MessagePreviewView$Page;,
        Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;,
        Lorg/telegram/ui/Components/MessagePreviewView$TabsView;,
        Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;,
        Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;,
        Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;
    }
.end annotation


# instance fields
.field changeBoundsRunnable:Ljava/lang/Runnable;

.field final chatActivity:Lorg/telegram/ui/ChatActivity;

.field private final currentAccount:I

.field currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private final drawingGroups:Ljava/util/ArrayList;

.field private final forwardParams:Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;

.field isLandscapeMode:Z

.field final messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

.field offsetsAnimator:Landroid/animation/ValueAnimator;

.field private final resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

.field returnSendersNames:Z

.field sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field final showOutdatedQuote:Z

.field showing:Z

.field tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

.field viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public static synthetic $r8$lambda$2rP3t7OvT2H6YzUFGirl-jGBmwE(Lorg/telegram/ui/Components/MessagePreviewView;ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView;->lambda$new$1(ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dCy3eu08PC23zgX8NfAqiWywVuM(Lorg/telegram/ui/Components/MessagePreviewView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawingGroups(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->drawingGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/MessagePreviewView;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V
    .locals 9

    move-object/from16 v0, p7

    move/from16 v1, p9

    .line 1784
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v2, Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;

    invoke-direct {v2}, Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->forwardParams:Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;

    .line 1770
    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    .line 1779
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->drawingGroups:Ljava/util/ArrayList;

    .line 1785
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    .line 1786
    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 1787
    iput p6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentAccount:I

    .line 1788
    iput-object p4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1789
    iput-object p5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1790
    iput-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    .line 1791
    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 1792
    iget-boolean p5, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-eqz p5, :cond_0

    move p5, p4

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/MessagePreviewView;->setForwardParams(Z)V

    .line 1794
    new-instance p5, Lorg/telegram/ui/Components/MessagePreviewView$2;

    invoke-direct {p5, p0, p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 1823
    new-instance p5, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    invoke-direct {p5, p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    move p5, p2

    move v0, p5

    :goto_1
    const/4 v2, 0x3

    if-ge p5, v2, :cond_5

    if-nez p5, :cond_1

    .line 1826
    iget-object v2, p3, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_1

    .line 1827
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget v3, Lorg/telegram/messenger/R$string;->MessageOptionsReply:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    :goto_2
    move/from16 v2, p8

    goto :goto_3

    :cond_1
    if-ne p5, p4, :cond_2

    .line 1828
    iget-object v2, p3, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1829
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget v3, Lorg/telegram/messenger/R$string;->MessageOptionsForward:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p4, v3}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne p5, v2, :cond_3

    .line 1830
    iget-object v3, p3, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 1831
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget v4, Lorg/telegram/messenger/R$string;->MessageOptionsLink:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    goto :goto_2

    :goto_3
    if-ne p5, v2, :cond_4

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p4

    goto :goto_4

    :cond_3
    move/from16 v2, p8

    :cond_4
    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 1840
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance p3, Lorg/telegram/ui/Components/MessagePreviewView$3;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    .line 1861
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 1862
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setSelectedTab(F)V

    .line 1865
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    const/16 p2, 0x42

    const/16 p3, 0x57

    const/4 p5, -0x1

    invoke-static {p5, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v7, 0x0

    const/high16 v8, 0x42840000    # 66.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1871
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1891
    new-instance p1, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1897
    iput-boolean p4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    const/4 p1, 0x0

    .line 1898
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const p1, 0x3f733333    # 0.95f

    .line 1899
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1900
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1901
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0xfa

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1903
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->updateColors()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 4

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->id:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1877
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1878
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->id:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1884
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    if-ne p1, v0, :cond_3

    :goto_2
    return-void

    .line 1888
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1892
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    if-nez p1, :cond_0

    .line 1893
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_0
    return p3
.end method

.method private updateColors()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected didSendPressed()V
    .locals 0

    return-void
.end method

.method public dismiss(Z)V
    .locals 4

    .line 1911
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1912
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    .line 1913
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1923
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1924
    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v2, :cond_0

    .line 1925
    check-cast v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    .line 1926
    iget v2, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v2, :cond_0

    .line 1927
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSelection()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1932
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onDismiss(Z)V

    :cond_2
    return-void
.end method

.method public getForwardParams()Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->forwardParams:Lcom/exteragram/messenger/forward/ForwardContext$ForwardParams;

    return-object v0
.end method

.method public getForwardingMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic isForwardNoQuote()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/forward/ForwardContext$-CC;->$default$isForwardNoQuote(Lcom/exteragram/messenger/forward/ForwardContext;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1949
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    return v0
.end method

.method public isTouchedHandle()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2279
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2280
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v3, :cond_0

    .line 2281
    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isTouched()Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected abstract onDismiss(Z)V
.end method

.method protected abstract onFullDismiss(Z)V
.end method

.method protected abstract onQuoteSelectedPart()V
.end method

.method protected removeForward()V
    .locals 0

    return-void
.end method

.method protected abstract removeLink()V
.end method

.method protected abstract removeQuote()V
.end method

.method protected abstract removeReply()V
.end method

.method protected abstract selectAnotherChat(Z)V
.end method

.method public setForwardParams(Z)V
    .locals 1

    .line 106
    invoke-static {p0, p1}, Lcom/exteragram/messenger/forward/ForwardContext$-CC;->$default$setForwardParams(Lcom/exteragram/messenger/forward/ForwardContext;Z)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v0, :cond_0

    .line 108
    iput-boolean p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->setForwardParams(Z)V

    :cond_1
    return-void
.end method

.method public setSendAsPeer(Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 3

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 p1, 0x0

    .line 75
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 76
    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v1, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 77
    check-cast v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateMessages(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAll()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 2240
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 2241
    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v3, :cond_8

    .line 2242
    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    .line 2243
    iget v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2244
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 2246
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 2248
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 2250
    :cond_2
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateMessages(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    .line 2251
    iget v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v3, :cond_6

    .line 2252
    iget-boolean v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v3, :cond_4

    .line 2254
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2255
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 2257
    :cond_3
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2259
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput v0, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 2260
    iget v6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    iget-object v7, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 2261
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v7, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {v3, v6, v7}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v3

    iput-object v3, v5, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 2262
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v7, v6, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v6, v6, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {v3, v5, v7, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto :goto_2

    .line 2265
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-object v5, v3, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 2266
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 2267
    invoke-static {v2, v0, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mswitchToQuote(Lorg/telegram/ui/Components/MessagePreviewView$Page;ZZ)V

    .line 2269
    :cond_5
    :goto_2
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateSubtitle(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    .line 2271
    :cond_6
    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-eqz v2, :cond_8

    .line 2272
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public updateLink()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2224
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 2225
    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2226
    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    .line 2227
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v4, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2228
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2229
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2230
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2231
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2232
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2233
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2234
    invoke-static {v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateMessages(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected abstract viewInChat()V
.end method
