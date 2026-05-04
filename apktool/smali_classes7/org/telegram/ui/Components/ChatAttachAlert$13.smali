.class Lorg/telegram/ui/Components/ChatAttachAlert$13;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    .line 2480
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 2490
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2491
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdateCameraButtonVisibility(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 2483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2484
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onButtonsTranslationYUpdated()V

    .line 2485
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$13;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdateCameraButtonVisibility(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method
