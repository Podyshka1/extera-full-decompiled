.class Lorg/telegram/ui/ProfileActivity$44$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$44;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$44;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$44;)V
    .locals 0

    .line 8272
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$44$1;->this$1:Lorg/telegram/ui/ProfileActivity$44;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8275
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$44$1;->this$1:Lorg/telegram/ui/ProfileActivity$44;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$44;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputheaderShadowAnimatorSet(Lorg/telegram/ui/ProfileActivity;Landroid/animation/AnimatorSet;)V

    return-void
.end method
