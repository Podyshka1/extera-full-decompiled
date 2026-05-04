.class Lorg/telegram/ui/ChatActivity$62;
.super Lorg/telegram/ui/Components/InstantCameraView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->checkInstantCameraView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    .line 10807
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method


# virtual methods
.method public startAnimation(ZZ)V
    .locals 1

    .line 10810
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    .line 10811
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$62;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatorRoundMessageCameraVisibility(Lorg/telegram/ui/ChatActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method
