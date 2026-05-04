.class Lorg/telegram/ui/TopicsFragment$6;
.super Lorg/telegram/ui/Components/PullForegroundDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$6;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/PullForegroundDrawable;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getViewOffset()F
    .locals 1

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$6;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->getViewOffset()F

    move-result v0

    return v0
.end method
