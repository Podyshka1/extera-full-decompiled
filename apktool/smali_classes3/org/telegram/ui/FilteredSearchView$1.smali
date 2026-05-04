.class Lorg/telegram/ui/FilteredSearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilteredSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilteredSearchView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$1;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$1;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetisLoading(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$1;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$1;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$1;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$1;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
