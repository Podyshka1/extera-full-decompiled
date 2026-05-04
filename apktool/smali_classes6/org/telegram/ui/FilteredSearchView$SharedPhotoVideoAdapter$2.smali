.class Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter$2;
.super Lorg/telegram/ui/Components/FlickerLoadingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getColumnsCount()I
    .locals 1

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter$2;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetcolumnsCount(Lorg/telegram/ui/FilteredSearchView;)I

    move-result v0

    return v0
.end method
