.class Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;)V
    .locals 0

    .line 1991
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1994
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method
