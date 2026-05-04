.class Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->setText(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$2;->this$0:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->-$$Nest$fgetnewTextView(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
