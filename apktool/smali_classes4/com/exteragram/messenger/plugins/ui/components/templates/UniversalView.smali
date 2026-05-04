.class public Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;
    }
.end annotation


# instance fields
.field delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;


# direct methods
.method public static synthetic $r8$lambda$09IStWuRFPoj4fUjZHUWiVGfPbU(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->lambda$onInitializeAccessibilityNodeInfo$3(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KW5Ga8L1UKrb4vnjszW6wqv4UdI(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->lambda$onDraw$0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xh7g7E1IR2myYbPpexch-MtesLA(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->lambda$onMeasure$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOLICMEYvcisGy03C6624weVB2Q(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->lambda$onTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/graphics/Canvas;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$onInitializeAccessibilityNodeInfo$3(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method private synthetic lambda$onMeasure$2(II)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$1(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDelegate()Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 55
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;)V

    invoke-interface {v0, p1, v1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;)V

    invoke-interface {v0, p1, v1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;->onMeasure(IILorg/telegram/messenger/Utilities$Callback2;)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;)V

    invoke-interface {v0, p1, v1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/Utilities$CallbackReturn;)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDelegate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;

    return-void
.end method
