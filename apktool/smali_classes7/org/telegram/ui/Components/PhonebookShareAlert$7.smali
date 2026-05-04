.class Lorg/telegram/ui/Components/PhonebookShareAlert$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhonebookShareAlert;->updateLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhonebookShareAlert;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$7;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 992
    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$7;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhonebookShareAlert;->-$$Nest$fputactionBarAnimation(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/animation/AnimatorSet;)V

    return-void
.end method
