.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll()V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
