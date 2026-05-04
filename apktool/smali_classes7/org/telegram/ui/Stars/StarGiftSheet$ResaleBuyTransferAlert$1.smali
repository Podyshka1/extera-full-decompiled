.class Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarGiftSheet$PaymentFormState;IJLjava/lang/String;ZLorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final c:[I

.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;Landroid/content/Context;)V
    .locals 0

    .line 7766
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 7767
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 7770
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 7771
    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetcurrencyTabsView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetcurrencyTabsView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgettonHint(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetrootView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7773
    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetrootView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7774
    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    const/4 p3, 0x0

    aget p2, p2, p3

    int-to-float p2, p2

    iget-object p4, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p4}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetrootView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTranslationX()F

    move-result p4

    sub-float/2addr p2, p4

    .line 7775
    iget-object p4, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    const/4 p5, 0x1

    aget p4, p4, p5

    int-to-float p4, p4

    iget-object v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetrootView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr p4, v0

    .line 7777
    iget-object v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetcurrencyTabsView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7778
    iget-object v1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7779
    iget-object v1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    aget p3, v1, p3

    int-to-float p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr p3, v1

    .line 7780
    iget-object v1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->c:[I

    aget p5, v1, p5

    int-to-float p5, p5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr p5, v1

    .line 7782
    iget-object v1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgettonHint(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    sub-float/2addr p5, p4

    iget-object p4, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p4}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgettonHint(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p5, p4

    iget-object p4, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p4}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgetcurrencyTabsView(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p5, p4

    invoke-virtual {v1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 7783
    iget-object p4, p1, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert$1;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;

    invoke-static {p4}, Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;->-$$Nest$fgettonHint(Lorg/telegram/ui/Stars/StarGiftSheet$ResaleBuyTransferAlert;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p4

    sub-float/2addr p3, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p2, p5

    add-float/2addr p3, p2

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method
