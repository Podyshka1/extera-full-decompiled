.class public interface abstract Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout$UniversalFrameLayoutListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UniversalFrameLayoutListener"
.end annotation


# virtual methods
.method public abstract dispatchDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V
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

.method public abstract drawChild(Landroid/graphics/Canvas;Landroid/view/View;JLorg/telegram/messenger/Utilities$Callback3Return;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/view/View;",
            "J",
            "Lorg/telegram/messenger/Utilities$Callback3Return<",
            "Landroid/graphics/Canvas;",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract invalidate(IIIILjava/lang/Runnable;)V
.end method

.method public abstract invalidate(Ljava/lang/Runnable;)V
.end method

.method public abstract onAttachedToWindow(Ljava/lang/Runnable;)V
.end method

.method public abstract onDetachedFromWindow(Ljava/lang/Runnable;)V
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

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/Utilities$CallbackReturn;)Z
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

.method public abstract onLayout(ZIIIILorg/telegram/messenger/Utilities$Callback5;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII",
            "Lorg/telegram/messenger/Utilities$Callback5<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
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

.method public abstract requestLayout(Ljava/lang/Runnable;)V
.end method

.method public abstract setTranslationX(FLorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTranslationY(FLorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVisibility(ILorg/telegram/messenger/Utilities$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
