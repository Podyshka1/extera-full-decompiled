.class Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field final synthetic val$prevIndex:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V
    .locals 0

    .line 3374
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;->val$prevIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3377
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->-$$Nest$fgettextViews(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;)[Landroid/widget/TextView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;->val$prevIndex:I

    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
