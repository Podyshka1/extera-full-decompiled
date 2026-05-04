.class Lorg/telegram/ui/Components/ChatActivityEnterView$28;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createGiftButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$RcRGR0iJCTCDNA6fP920fQ655b8(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcheckBirthdayHint(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 3639
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$28;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 3642
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3643
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$28;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance p3, Lorg/telegram/ui/Components/ChatActivityEnterView$28$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$28$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 3647
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3648
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$28;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscheduledButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3649
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$28;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscheduledButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$28;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscheduledButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method
