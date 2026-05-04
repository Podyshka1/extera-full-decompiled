.class Lorg/telegram/ui/Components/ChatAttachAlert$35;
.super Lorg/telegram/ui/Components/MentionsContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->createMentionsContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 6396
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$35;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onAnimationScroll()V
    .locals 1

    .line 6406
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$35;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6407
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$35;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    :cond_0
    return-void
.end method

.method protected onScrolled(ZZ)V
    .locals 0

    .line 6399
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$35;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6400
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$35;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    :cond_0
    return-void
.end method
