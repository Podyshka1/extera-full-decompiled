.class Lorg/telegram/ui/Components/AvatarConstructorFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;->showColorPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$12;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1185
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1186
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$12;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->colorPickerInAnimatoin:Z

    return-void
.end method
