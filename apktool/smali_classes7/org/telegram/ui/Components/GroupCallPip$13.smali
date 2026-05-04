.class Lorg/telegram/ui/Components/GroupCallPip$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupCallPip;->showAvatars(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallPip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallPip;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$13;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1038
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$13;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object p1, p1, Lorg/telegram/ui/Components/GroupCallPip;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
