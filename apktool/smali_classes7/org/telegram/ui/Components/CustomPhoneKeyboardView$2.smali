.class Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setupBackButtonDetector(Landroid/content/Context;)Landroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

.field final synthetic val$touchSlop:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;I)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    iput p2, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->val$touchSlop:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetpostedLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetdetectLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fputpostedLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;Z)V

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetdetectLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetonBackButton(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetpostedLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetrunningLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->val$touchSlop:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-gez p1, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->val$touchSlop:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_2

    .line 198
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fputpostedLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;Z)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fputrunningLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;Z)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetdetectLongClick(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/CustomPhoneKeyboardView$2;->this$0:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-static {p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->-$$Nest$fgetonBackButton(Lorg/telegram/ui/Components/CustomPhoneKeyboardView;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return p2
.end method
