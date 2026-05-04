.class Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->onPlayerError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$1;->this$1:Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$1;->this$1:Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;

    iget-object p1, p1, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->-$$Nest$fgetprogressBar(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
