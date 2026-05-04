.class Lorg/telegram/ui/Components/MessagePreviewView$Page$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$quote:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;->val$quote:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$fputquoteSwitcher(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/animation/AnimatorSet;)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;->val$quote:Z

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mswitchToQuote(Lorg/telegram/ui/Components/MessagePreviewView$Page;ZZ)V

    return-void
.end method
