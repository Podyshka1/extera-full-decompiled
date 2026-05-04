.class Lorg/telegram/ui/PhotoPickerActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIndexSelectable(I)Z
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSelected(I)Z
    .locals 1

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetselectedAlbum(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetselectedAlbum(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 894
    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 896
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 897
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 899
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetselectedPhotos(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onStartStopSelection(Z)V
    .locals 1

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fputalertOnlyOnce(Lorg/telegram/ui/PhotoPickerActivity;I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 911
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 913
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    return-void
.end method

.method public setSelected(Landroid/view/View;IZ)V
    .locals 0

    .line 882
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$8;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p2}, Lorg/telegram/ui/PhotoPickerActivity;->-$$Nest$fgetshouldSelect(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result p2

    if-ne p3, p2, :cond_1

    instance-of p2, p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-nez p2, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 886
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->callDelegate()V

    :cond_1
    :goto_0
    return-void
.end method
