.class Lorg/telegram/ui/Components/AvatarConstructorFragment$11$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment$11;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment$11;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$11$1;->this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$11;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1159
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$11$1;->this$1:Lorg/telegram/ui/Components/AvatarConstructorFragment$11;

    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$11;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerInAnimatoin:Z

    .line 1160
    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerPreviewView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
