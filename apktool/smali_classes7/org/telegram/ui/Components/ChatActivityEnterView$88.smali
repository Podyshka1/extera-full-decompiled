.class Lorg/telegram/ui/Components/ChatActivityEnterView$88;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$origHeight:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V
    .locals 0

    .line 13531
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->val$origHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 13534
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcloseAnimationInProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 13535
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstickersExpansionAnim(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/Animator;)V

    .line 13536
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13537
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetwindowInsetsInAppController(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/inset/WindowInsetsInAppController;

    move-result-object p1

    if-nez p1, :cond_0

    .line 13538
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->val$origHeight:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13540
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetemojiView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13542
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13543
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 13544
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 13545
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 13547
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetkeyboardVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13548
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentPopupContentType(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mshowPopup(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 13550
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonEmojiSearchClosed(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13551
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonEmojiSearchClosed(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 13552
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputonEmojiSearchClosed(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)V

    .line 13554
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$88;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method
