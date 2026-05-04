.class Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Landroid/content/Context;Landroid/view/GestureDetector;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    iput-object p3, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 175
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetonLongPress(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v0

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 197
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetonLongPress(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 198
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fgetisFromFling(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 199
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$mupdateSpringPositions(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;)V

    .line 201
    :cond_3
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputinLongPress(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Z)V

    .line 202
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputisScrolling(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Z)V

    .line 203
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputisScrollDisallowed(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Z)V

    .line 204
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-static {p1, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;->-$$Nest$fputisFromFling(Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;Z)V

    return v0
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 181
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 187
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/picker/IconPickerView$2;->this$0:Lcom/exteragram/messenger/icons/ui/picker/IconPickerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
