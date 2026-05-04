.class Lorg/telegram/ui/Components/JoinToSendSettingsView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinToSend(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/JoinToSendSettingsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView$1;->this$0:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView$1;->this$0:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    if-nez v0, :cond_0

    .line 159
    iget-object p1, p1, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView$1;->this$0:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/JoinToSendSettingsView;->onVisibilityChanged:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
