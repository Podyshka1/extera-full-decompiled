.class Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/FiltersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCallback"
.end annotation


# instance fields
.field final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field changed:Z


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Lorg/telegram/ui/Adapters/FiltersView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    const/4 v0, 0x1

    .line 893
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->changed:Z

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->changed:Z

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    const/4 v0, 0x1

    .line 899
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->changed:Z

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Adapters/FiltersView$UpdateCallback;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
