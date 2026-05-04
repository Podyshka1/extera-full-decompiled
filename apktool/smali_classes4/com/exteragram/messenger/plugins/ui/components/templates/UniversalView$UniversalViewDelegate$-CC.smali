.class public abstract synthetic Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$onAttachedToWindow(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;)V
    .locals 0

    .line 100
    return-void
.end method

.method public static $default$onDetachedFromWindow(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;)V
    .locals 0

    .line 103
    return-void
.end method

.method public static $default$onDraw(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 96
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onInitializeAccessibilityNodeInfo(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 114
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onMeasure(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;IILorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onTouchEvent(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;Landroid/view/MotionEvent;Lorg/telegram/messenger/Utilities$CallbackReturn;)Z
    .locals 0

    .line 106
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
