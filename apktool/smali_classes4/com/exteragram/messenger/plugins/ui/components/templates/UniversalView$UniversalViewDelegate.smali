.class public interface abstract Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView$UniversalViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UniversalViewDelegate"
.end annotation


# virtual methods
.method public abstract onAttachedToWindow()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/graphics/Canvas;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMeasure(IILorg/telegram/messenger/Utilities$Callback2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/Utilities$CallbackReturn;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Lorg/telegram/messenger/Utilities$CallbackReturn<",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method
