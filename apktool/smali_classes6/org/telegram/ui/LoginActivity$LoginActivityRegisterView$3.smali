.class Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 7871
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 7880
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7881
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetavatarOverlay(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 7874
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    .line 7875
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetavatarOverlay(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
