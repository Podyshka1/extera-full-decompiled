.class Lorg/telegram/ui/PhotoViewer$73$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$73;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$73;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$73;)V
    .locals 0

    .line 16424
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 16427
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$73$1;->this$1:Lorg/telegram/ui/PhotoViewer$73;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
