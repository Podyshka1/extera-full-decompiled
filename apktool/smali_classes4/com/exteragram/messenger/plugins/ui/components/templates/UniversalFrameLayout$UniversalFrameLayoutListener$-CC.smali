.class public abstract synthetic Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$dispatchDraw(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 215
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$drawChild(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Landroid/graphics/Canvas;Landroid/view/View;JLorg/telegram/messenger/Utilities$Callback3Return;)Z
    .locals 0

    .line 247
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p5, p1, p2, p0}, Lorg/telegram/messenger/Utilities$Callback3Return;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static $default$invalidate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;IIIILjava/lang/Runnable;)V
    .locals 0

    .line 227
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static $default$invalidate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 223
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static $default$onAttachedToWindow(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 207
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static $default$onDetachedFromWindow(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 211
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static $default$onDraw(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 231
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onInitializeAccessibilityNodeInfo(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 235
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onInterceptTouchEvent(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Landroid/view/MotionEvent;Lorg/telegram/messenger/Utilities$CallbackReturn;)Z
    .locals 0

    .line 239
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static $default$onLayout(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;ZIIIILorg/telegram/messenger/Utilities$Callback5;)V
    .locals 0

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    move-object p0, p6

    invoke-interface/range {p0 .. p5}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onMeasure(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;IILorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$onTouchEvent(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Landroid/view/MotionEvent;Lorg/telegram/messenger/Utilities$CallbackReturn;)Z
    .locals 0

    .line 243
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static $default$requestLayout(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 219
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static $default$setTranslationX(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;FLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 199
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$setTranslationY(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;FLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 203
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static $default$setVisibility(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method
