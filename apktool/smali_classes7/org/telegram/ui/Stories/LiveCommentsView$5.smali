.class Lorg/telegram/ui/Stories/LiveCommentsView$5;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/LiveCommentsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/LiveCommentsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$5;->this$0:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected animateByScale(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method
