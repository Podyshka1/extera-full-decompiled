.class Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->animateUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1325
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updating:Z

    const/4 v0, 0x0

    .line 1326
    iput v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    .line 1327
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1328
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1329
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;->this$1:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method
