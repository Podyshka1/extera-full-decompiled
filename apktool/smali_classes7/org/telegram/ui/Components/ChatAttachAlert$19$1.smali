.class Lorg/telegram/ui/Components/ChatAttachAlert$19$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$19;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$19;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$19;)V
    .locals 0

    .line 3130
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3133
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$19$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$19;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$19;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionLimitView(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
