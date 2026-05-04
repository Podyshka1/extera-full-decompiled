.class Lorg/telegram/ui/Components/ChatActivityEnterView$30;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createBotButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 3785
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    .line 3788
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3789
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscheduledButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3790
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscheduledButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$30;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscheduledButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method
