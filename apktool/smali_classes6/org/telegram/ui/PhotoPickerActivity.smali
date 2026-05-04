.class public Lorg/telegram/ui/PhotoPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;,
        Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;
    }
.end annotation


# instance fields
.field private alertOnlyOnce:I

.field private allowCaption:Z

.field private allowIndices:Z

.field private allowOrder:Z

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private caption:Ljava/lang/CharSequence;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field protected commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

.field private final dialogBackgroundKey:I

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final forceDarckTheme:Z

.field protected frameLayout2:Landroid/widget/FrameLayout;

.field private imageReqId:I

.field private imageSearchEndReached:Z

.field private initialSearchString:Ljava/lang/String;

.field private isDocumentsPicker:Z

.field private itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

.field private itemSize:I

.field private itemsPerRow:I

.field private lastSearchImageString:Ljava/lang/String;

.field private lastSearchString:Ljava/lang/String;

.field private lastSearchToken:I

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

.field private listSort:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxSelectedPhotos:I

.field private needsBottomLayout:Z

.field private nextImagesSearchOffset:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private recentSearches:Ljava/util/ArrayList;

.field private rect:Landroid/graphics/RectF;

.field private searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchResult:Ljava/util/ArrayList;

.field private searchResultKeys:Ljava/util/HashMap;

.field private searchResultUrls:Ljava/util/HashMap;

.field private searching:Z

.field private searchingUser:Z

.field private selectPhotoType:I

.field private selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field protected selectedCountView:Landroid/view/View;

.field private selectedPhotos:Ljava/util/HashMap;

.field private selectedPhotosOrder:Ljava/util/ArrayList;

.field private final selectorKey:I

.field private sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private sendPressed:Z

.field protected shadow:Landroid/view/View;

.field private shouldSelect:Z

.field private showAsListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private final textKey:I

.field private textPaint:Landroid/text/TextPaint;

.field private type:I

.field private writeButton:Landroid/widget/ImageView;

.field protected writeButtonContainer:Landroid/widget/FrameLayout;

.field private writeButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$0eUvHQJkozRHjVU9y6TdqeVbPkw(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$9(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1b72D4mY_ynv2bfUTEtJg0wRRdg(Lorg/telegram/ui/PhotoPickerActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$8(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7zVj6E7ba4nz4bDUzBLyho-g5nI(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchImages$13(Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FUi7WHZTFDypmakiUdsfRKuXHwg(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchBotUser$10(Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HmJZQHznU8dCkC82ZSe4RIN4gYE(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchImages$12(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMITbrhAjOKiftc1PUHnVMIODzI(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S5dzWIYzEJ-pTmDjgIXhaAIpiuE(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$6(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YjPcpztvpO3M5nBZ_eg1oSxBa3w(Lorg/telegram/ui/PhotoPickerActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$searchBotUser$11(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YnUimsF9JGs2zDduf6BxgVqOwzk(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b36xPYAOL6TVLGVWECL9qQrgAcM(Lorg/telegram/ui/PhotoPickerActivity;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$7(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$kSLF_AzXeKkznTOM6HdgLxtAuIE(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDj7VGquUnS2Z1Hgg2-VQRAtYUY(Lorg/telegram/ui/PhotoPickerActivity;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$4(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqG9YGFI9XasqPTZq8kwGjgW3XM(Lorg/telegram/ui/PhotoPickerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1QJSyPMWZ73Hs8bz_FPze2o3qk(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 991
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetalertOnlyOnce(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->alertOnlyOnce:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowCaption(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowIndices(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowOrder(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSet(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatActivity(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogBackgroundKey(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforceDarckTheme(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->forceDarckTheme:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageReqId(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimageSearchEndReached(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemSize(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemsPerRow(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemsPerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSearchString(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/PhotoPickerActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistSort(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxSelectedPhotos(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnextImagesSearchOffset(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextImagesSearchOffset:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaint(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentSearches(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchItem(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResultKeys(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearching(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectPhotoType(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedAlbum(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPhotos(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPhotosOrder(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshouldSelect(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->shouldSelect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowAsListItem(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->showAsListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextKey(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextPaint(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/text/TextPaint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputalertOnlyOnce(Lorg/telegram/ui/PhotoPickerActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->alertOnlyOnce:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimatorSet(Lorg/telegram/ui/PhotoPickerActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageReqId(Lorg/telegram/ui/PhotoPickerActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputimageSearchEndReached(Lorg/telegram/ui/PhotoPickerActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitemSize(Lorg/telegram/ui/PhotoPickerActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitemsPerRow(Lorg/telegram/ui/PhotoPickerActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemsPerRow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastSearchString(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlistSort(Lorg/telegram/ui/PhotoPickerActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/PhotoPickerActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToSelectedPhotos(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/Object;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->addToSelectedPhotos(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCellForIndex(Lorg/telegram/ui/PhotoPickerActivity;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprocessSearch(Lorg/telegram/ui/PhotoPickerActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->processSearch(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msearchImages(Lorg/telegram/ui/PhotoPickerActivity;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoPickerActivity;->searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSelectedPhotos(Lorg/telegram/ui/PhotoPickerActivity;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCheckedPhotoIndices(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateCheckedPhotoIndices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearchInterface(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V
    .locals 2

    .line 434
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultUrls:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    .line 151
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    const/16 v1, 0x64

    .line 162
    iput v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    const/4 v1, 0x3

    .line 180
    iput v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemsPerRow:I

    .line 181
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    .line 182
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->rect:Landroid/graphics/RectF;

    .line 183
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->paint:Landroid/graphics/Paint;

    .line 194
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->needsBottomLayout:Z

    .line 207
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 435
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 436
    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 437
    iput-object p4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    .line 438
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    .line 439
    iput p5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    .line 440
    iput-object p7, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 441
    iput-boolean p6, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    .line 442
    iput-boolean p8, p0, Lorg/telegram/ui/PhotoPickerActivity;->forceDarckTheme:Z

    if-nez p2, :cond_0

    .line 445
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->loadRecentSearch()V

    :cond_0
    if-eqz p8, :cond_1

    .line 449
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    .line 450
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    .line 451
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItemsSelector:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    return-void

    .line 453
    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    .line 454
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    .line 455
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 0

    .line 108
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method private addToRecentSearches(Ljava/lang/String;)V
    .locals 4

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1336
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1337
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1342
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1343
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 1344
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1346
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->saveRecentSearch()V

    return-void
.end method

.method private addToSelectedPhotos(Ljava/lang/Object;I)I
    .locals 4

    .line 1500
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    .line 1501
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1502
    :cond_0
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_1

    .line 1503
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-nez v1, :cond_2

    return v2

    .line 1508
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1509
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1512
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1514
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-eqz v2, :cond_4

    .line 1515
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateCheckedPhotoIndices()V

    :cond_4
    if-ltz p2, :cond_7

    if-eqz v0, :cond_5

    .line 1519
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    goto :goto_1

    .line 1520
    :cond_5
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_6

    .line 1521
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$SearchImage;->reset()V

    .line 1523
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {p1, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    :cond_7
    return v1

    .line 1527
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private applyCaption()V
    .locals 2

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1230
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    .line 1231
    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1232
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    return-void

    .line 1233
    :cond_1
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_2

    .line 1234
    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1235
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 5

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1477
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1478
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_2

    .line 1479
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1480
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1481
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v4, :cond_0

    if-ltz v3, :cond_2

    .line 1482
    iget-object v4, v4, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_0
    if-ltz v3, :cond_2

    .line 1486
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

    if-eqz p1, :cond_0

    .line 812
    invoke-interface {p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;->shouldClearRecentSearch()V

    return-void

    .line 814
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->clearRecentSearch()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 9

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_1

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 799
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

    if-eqz p2, :cond_0

    .line 800
    invoke-interface {p2, p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;->shouldSearchText(Ljava/lang/String;)V

    return-void

    .line 802
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 804
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->processSearch(Landroid/widget/EditText;)V

    return-void

    .line 806
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v1

    if-ne p2, p1, :cond_c

    .line 807
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 808
    sget p2, Lorg/telegram/messenger/R$string;->ClearSearchAlertTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 809
    sget p2, Lorg/telegram/messenger/R$string;->ClearSearchAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 810
    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 817
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 818
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 819
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 820
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_c

    .line 822
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 829
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 832
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    if-ltz p2, :cond_c

    .line 834
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_4

    goto :goto_4

    .line 837
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_5

    .line 838
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 840
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    if-eqz v0, :cond_6

    .line 841
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->onListItemClick(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    .line 844
    :cond_6
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    if-eq p1, v0, :cond_8

    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR_VIDEO:I

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 846
    :cond_7
    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    if-ne p1, v0, :cond_9

    const/4 v1, 0x3

    :cond_8
    :goto_2
    move v5, v1

    goto :goto_3

    .line 848
    :cond_9
    sget v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_QR:I

    if-ne p1, v0, :cond_a

    const/16 v1, 0xa

    goto :goto_2

    .line 850
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_b

    const/4 v1, 0x4

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    .line 855
    :goto_3
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 856
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 857
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->isDocumentsPicker:Z

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    move v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    :cond_c
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)Z
    .locals 3

    .line 862
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->onListItemClick(Landroid/view/View;Ljava/lang/Object;)V

    return v1

    .line 866
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    .line 867
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 868
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->shouldSelect:Z

    invoke-virtual {v2, p1, v1, p2, v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->setIsActive(Landroid/view/View;ZIZ)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$4(ZII)V
    .locals 0

    const/4 p3, 0x0

    .line 1068
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZII)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 3

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1068
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1070
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZII)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(ZII)V
    .locals 0

    const/4 p3, 0x0

    .line 1131
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZII)V

    return-void
.end method

.method private synthetic lambda$createView$8(ILandroid/view/View;)V
    .locals 2

    .line 1127
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1128
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance p2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-static {p1, v0, v1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1133
    invoke-direct {p0, p1, p2, p2}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos(ZII)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)Z
    .locals 10

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_5

    .line 1077
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1080
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v4, 0x2

    if-nez v2, :cond_9

    .line 1081
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1082
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1083
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v5, Lorg/telegram/ui/PhotoPickerActivity$14;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoPickerActivity$14;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1100
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v5, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1105
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 1107
    new-array v2, v4, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iput-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_8

    if-nez v2, :cond_1

    .line 1109
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 1113
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v2, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    if-ne v2, v3, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    invoke-direct {v6, v7, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    aput-object v6, v5, v2

    if-nez v2, :cond_6

    .line 1115
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1116
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    sget v6, Lorg/telegram/messenger/R$string;->SetReminder:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 1118
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    sget v6, Lorg/telegram/messenger/R$string;->ScheduleMessage:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 1121
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    sget v6, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1123
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    const/high16 v6, 0x43440000    # 196.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1125
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v6, v6, v2

    const/4 v7, -0x1

    const/16 v8, 0x30

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1126
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    new-instance v6, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PhotoPickerActivity;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1137
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    .line 1139
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, -0x2

    invoke-direct {v0, v2, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1140
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1149
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1151
    new-array v0, v4, [I

    .line 1152
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1153
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    aget v5, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v3, 0x33

    invoke-virtual {v2, p1, v3, v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v0, 0x3

    .line 1155
    :try_start_0
    invoke-virtual {p1, v0, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_5
    return v1
.end method

.method private synthetic lambda$searchBotUser$10(Lorg/telegram/tgnet/TLObject;Z)V
    .locals 4

    .line 1596
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1597
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1598
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1599
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1600
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchImageString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1601
    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchImageString:Ljava/lang/String;

    .line 1602
    const-string v0, ""

    invoke-direct {p0, p2, p1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$11(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1595
    new-instance p3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchImages$12(Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 9

    .line 1647
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->addToRecentSearches(Ljava/lang/String;)V

    .line 1648
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    if-eq p2, p1, :cond_0

    goto/16 :goto_d

    .line 1652
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 1655
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 1656
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextImagesSearchOffset:Ljava/lang/String;

    .line 1658
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_11

    .line 1659
    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez p4, :cond_1

    .line 1660
    const-string v5, "photo"

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_1
    if-eqz p4, :cond_2

    const-string v5, "gif"

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_8

    .line 1663
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_8

    .line 1667
    :cond_3
    new-instance v5, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    if-eqz p4, :cond_7

    .line 1669
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_7

    move v6, v0

    .line 1670
    :goto_1
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1671
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1672
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v8, :cond_5

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1673
    :cond_5
    :goto_2
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1674
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 1678
    :cond_6
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1679
    iput v0, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1680
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_f

    .line 1681
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemSize:I

    invoke-static {v6, v7, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 1683
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v7, p2

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    goto/16 :goto_7

    :cond_7
    if-nez p4, :cond_9

    .line 1687
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_9

    .line 1688
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 1689
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v8, 0x140

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    if-nez v6, :cond_8

    goto/16 :goto_8

    .line 1693
    :cond_8
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1694
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 1695
    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1696
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1697
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1698
    iput-object v7, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_7

    .line 1700
    :cond_9
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v6, :cond_a

    goto/16 :goto_8

    :cond_a
    move v6, v0

    .line 1703
    :goto_3
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 1704
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1705
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v8, :cond_b

    .line 1706
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1707
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_4

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1711
    :cond_c
    :goto_4
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v6, :cond_d

    .line 1712
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    .line 1714
    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 1716
    :goto_5
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iput-object v7, v5, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz p4, :cond_e

    move v6, v0

    goto :goto_6

    .line 1717
    :cond_e
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    :goto_6
    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1720
    :cond_f
    :goto_7
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 1721
    iput p4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 1722
    iput-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 1723
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    .line 1724
    const-string v7, "id"

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "query_id"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    iget-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    const-string v6, "bot_name"

    invoke-static {p5}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    iget-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_10
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1733
    :cond_11
    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eq p1, p3, :cond_13

    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextImagesSearchOffset:Ljava/lang/String;

    if-nez p3, :cond_12

    goto :goto_9

    :cond_12
    move p3, v0

    goto :goto_a

    :cond_13
    :goto_9
    move p3, p2

    :goto_a
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    goto :goto_b

    :cond_14
    move v3, v0

    .line 1735
    :goto_b
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v3, :cond_15

    .line 1737
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {p2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_c

    .line 1738
    :cond_15
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    if-eqz p1, :cond_16

    .line 1739
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1741
    :cond_16
    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_17

    .line 1742
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    :cond_17
    :goto_d
    return-void
.end method

.method private synthetic lambda$searchImages$13(Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1646
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;ILorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadRecentSearch()V
    .locals 5

    .line 1323
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "web_recent_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1324
    const-string v1, "count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1330
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onListItemClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, -0x1

    .line 1241
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/PhotoPickerActivity;->addToSelectedPhotos(Ljava/lang/Object;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1246
    :goto_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1248
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1249
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1250
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 1252
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotosButton(I)V

    .line 1253
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->selectedPhotosChanged()V

    return-void
.end method

.method private processSearch(Landroid/widget/EditText;)V
    .locals 4

    .line 1350
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1353
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    .line 1356
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageSearchEndReached:Z

    .line 1357
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v3, ""

    invoke-direct {p0, v1, p1, v3, v0}, Lorg/telegram/ui/PhotoPickerActivity;->searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1358
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    .line 1359
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1360
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    .line 1361
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoRecentSearches:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1363
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v2, "NoResultFoundFor"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    return-void
.end method

.method private saveRecentSearch()V
    .locals 5

    .line 1313
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "web_recent_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1315
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "count"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1316
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1319
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private searchBotUser(Z)V
    .locals 3

    .line 1587
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1590
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchingUser:Z

    .line 1591
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1592
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->imageSearchBot:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1593
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private searchImages(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1609
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1610
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 1611
    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    if-eqz v2, :cond_0

    .line 1612
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1613
    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    .line 1617
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchImageString:Ljava/lang/String;

    .line 1618
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 1620
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->imageSearchBot:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1621
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    .line 1623
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->searchBotUser(Z)V

    :cond_2
    return-void

    .line 1627
    :cond_3
    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    .line 1629
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    if-nez p2, :cond_4

    .line 1630
    const-string v0, ""

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 1631
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1632
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 1634
    iget-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_6

    .line 1635
    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    .line 1636
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1637
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 1639
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 1642
    :cond_6
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1645
    :goto_2
    iget p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    add-int/lit8 v6, p3, 0x1

    iput v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    .line 1646
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda5;

    move-object v4, p0

    move v7, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;IZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p3, p4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, v4, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    .line 1745
    iget p1, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, v4, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    iget p3, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private sendSelectedPhotos(ZII)V
    .locals 2

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1760
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->applyCaption()V

    const/4 v0, 0x1

    .line 1761
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    .line 1762
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(ZZII)V

    .line 1763
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    sget p2, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->canFinishFragment()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1764
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showCommentTextView(ZZ)Z
    .locals 12

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1372
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_2

    return v1

    .line 1375
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1376
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1378
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1382
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_6

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/high16 v0, 0x42400000    # 48.0f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_f

    .line 1388
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1389
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz p1, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v4

    :goto_2
    new-array v9, v2, [F

    aput v8, v9, v1

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p1, :cond_8

    move v9, v5

    goto :goto_3

    :cond_8
    move v9, v4

    :goto_3
    new-array v10, v2, [F

    aput v9, v10, v1

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_9

    move v10, v5

    goto :goto_4

    :cond_9
    move v10, v3

    :goto_4
    new-array v11, v2, [F

    aput v10, v11, v1

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_a

    move v10, v5

    goto :goto_5

    :cond_a
    move v10, v4

    :goto_5
    new-array v11, v2, [F

    aput v10, v11, v1

    invoke-static {v6, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_b

    move v4, v5

    :cond_b
    new-array v7, v2, [F

    aput v4, v7, v1

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move v5, v3

    :goto_6
    new-array v6, v2, [F

    aput v5, v6, v1

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz p1, :cond_d

    move v6, v3

    goto :goto_7

    :cond_d
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    :goto_7
    new-array v7, v2, [F

    aput v6, v7, v1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    if-eqz p1, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    :goto_8
    new-array v0, v2, [F

    aput v3, v0, v1

    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1400
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1401
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1402
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity$16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$16;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1421
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_10

    .line 1423
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10

    move v1, v5

    goto :goto_9

    :cond_10
    move v1, v4

    :goto_9
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1424
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_11

    move v1, v5

    goto :goto_a

    :cond_11
    move v1, v4

    :goto_a
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1425
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_12

    move v1, v5

    goto :goto_b

    :cond_12
    move v1, v3

    :goto_b
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1426
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_13

    move v1, v5

    goto :goto_c

    :cond_13
    move v1, v4

    :goto_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1427
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_14

    move v4, v5

    :cond_14
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1428
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    move v5, v3

    :goto_d
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1429
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_16

    move v1, v3

    goto :goto_e

    :cond_16
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_e
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1430
    iget-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    if-eqz p1, :cond_17

    goto :goto_f

    :cond_17
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    :goto_f
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    if-nez p1, :cond_18

    .line 1432
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    :goto_10
    return v2
.end method

.method private updateCheckedPhotoIndices()V
    .locals 7

    .line 1448
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1451
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 1453
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1454
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_4

    .line 1455
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1456
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1457
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    .line 1458
    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1459
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    :cond_1
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    goto :goto_2

    .line 1461
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1462
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    :cond_3
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    goto :goto_2

    .line 1464
    :cond_4
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_6

    .line 1465
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1466
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1467
    check-cast v3, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1468
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method private updateSearchInterface()V
    .locals 2

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1579
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1582
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    return-void

    .line 1580
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    return-void
.end method


# virtual methods
.method public clearRecentSearch()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentSearches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1261
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 1262
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->saveRecentSearch()V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v7, 0x0

    .line 485
    iput-boolean v7, v0, Lorg/telegram/ui/PhotoPickerActivity;->listSort:Z

    .line 487
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 489
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 490
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 491
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 492
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 493
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 494
    :cond_0
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_1

    .line 495
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->SearchImagesTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v1, v8, :cond_2

    .line 497
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 523
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->isDocumentsPicker:Z

    const/4 v9, 0x2

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 525
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v7, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 526
    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;)V

    .line 537
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_list:I

    sget v4, Lorg/telegram/messenger/R$string;->ShowAsList:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->showAsListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 538
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v4, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 541
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_4

    .line 542
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 543
    sget v3, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v1, v7, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 583
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 584
    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 585
    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 586
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 589
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_6

    .line 590
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_5

    .line 591
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->SearchImagesTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-ne v1, v8, :cond_6

    .line 593
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 597
    :cond_6
    :goto_1
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$5;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 766
    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 769
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x40000000    # 2.0f

    .line 770
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 771
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 772
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 774
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$6;

    const/4 v10, 0x4

    invoke-direct {v3, v0, v2, v10}, Lorg/telegram/ui/PhotoPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;I)V

    iput-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 782
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 792
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 795
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 860
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    if-eq v1, v8, :cond_7

    .line 861
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 874
    :cond_7
    new-instance v1, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$8;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;-><init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    .line 916
    iget v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    if-eq v3, v8, :cond_8

    .line 917
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 920
    :cond_8
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$9;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/PhotoPickerActivity$9;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v11, 0x0

    .line 931
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 932
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 934
    new-instance v1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v8, v4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 935
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 936
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 937
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 938
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 939
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->flickerView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 940
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_9

    .line 942
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/messenger/R$string;->NoPhotos:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 946
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/messenger/R$string;->NoRecentSearches:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v7, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 949
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x33

    const/16 v16, 0x0

    const/high16 v17, 0x42fc0000    # 126.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$10;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$10;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_a

    .line 977
    invoke-direct {v0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    .line 980
    :cond_a
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->needsBottomLayout:Z

    if-eqz v1, :cond_f

    .line 981
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    .line 982
    sget v3, Lorg/telegram/messenger/R$drawable;->header_shadow_reverse:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 983
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 984
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    const/16 v18, 0x0

    const/high16 v19, 0x42400000    # 48.0f

    const/4 v13, -0x1

    const/high16 v14, 0x40400000    # 3.0f

    const/16 v15, 0x53

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    .line 987
    iget v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 988
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 990
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v6, 0x53

    invoke-static {v5, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v1, :cond_b

    .line 994
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 996
    :cond_b
    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    move v6, v7

    goto :goto_4

    :cond_d
    :goto_3
    move v6, v8

    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 998
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxCaptionLength:I

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v3, v8, [Landroid/text/InputFilter;

    aput-object v1, v3, v7

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->canUseLocalPremiumEmojis(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium(Z)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 1003
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    .line 1004
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1005
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v18, 0x42a80000    # 84.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x33

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 1008
    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoPickerActivity$11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1029
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$12;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity$12;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 1039
    invoke-virtual {v1, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 1040
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1041
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1043
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1044
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1045
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v18, 0x41400000    # 12.0f

    const/high16 v19, 0x41200000    # 10.0f

    const/16 v13, 0x3c

    const/high16 v14, 0x42700000    # 60.0f

    const/16 v15, 0x55

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    .line 1048
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButtonPressed:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    const/16 v5, 0x38

    invoke-static {v5, v1, v4}, Lcom/exteragram/messenger/utils/ui/UIUtil;->createFabBackground(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1049
    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1051
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1052
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1053
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1054
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$13;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$13;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1065
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x38

    const/high16 v14, 0x42600000    # 56.0f

    const/16 v15, 0x33

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1159
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1160
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1162
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$15;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/PhotoPickerActivity$15;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    .line 1183
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1184
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1185
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1186
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    const/high16 v18, -0x40000000    # -2.0f

    const/high16 v19, 0x41100000    # 9.0f

    const/16 v13, 0x2a

    const/high16 v14, 0x41c00000    # 24.0f

    const/16 v15, 0x55

    const/16 v16, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectPhotoType:I

    sget v2, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_ALL:I

    if-eq v1, v2, :cond_f

    .line 1188
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-eqz v1, :cond_10

    if-ne v1, v8, :cond_11

    :cond_10
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    if-eqz v1, :cond_11

    move v1, v8

    goto :goto_5

    :cond_11
    move v1, v7

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->allowIndices:Z

    .line 1193
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1194
    iget-object v1, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1195
    invoke-virtual {v0, v7}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotosButton(I)V

    .line 1197
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1292
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 1293
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    :cond_0
    return-void
.end method

.method public getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1298
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    .line 1971
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    iget v10, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v10, 0x0

    iget v11, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v11, 0x0

    iget v12, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v12, 0x0

    iget v13, v0, Lorg/telegram/ui/PhotoPickerActivity;->selectorKey:I

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v13, 0x0

    iget v14, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    new-instance v8, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v15, 0x0

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->textKey:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v16, 0x0

    iget v2, v0, Lorg/telegram/ui/PhotoPickerActivity;->dialogBackgroundKey:I

    move/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View;

    aput-object v12, v5, v11

    new-array v7, v10, [Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v7, v11

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachEmptyImage:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v10, [Ljava/lang/Class;

    aput-object v12, v2, v11

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isLightStatusBar()Z
    .locals 2

    .line 1993
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1546
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 465
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 466
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 471
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 472
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    if-eqz v0, :cond_0

    .line 473
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 474
    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->imageReqId:I

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 479
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method protected onPanTranslationUpdate(F)V
    .locals 1

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1207
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1287
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1267
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1271
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 1272
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 1274
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 1275
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    .line 1278
    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoPickerActivity;->processSearch(Landroid/widget/EditText;)V

    .line 1281
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1535
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    .line 1536
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setCaption(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1302
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->caption:Ljava/lang/CharSequence;

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 1304
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V
    .locals 0

    .line 1749
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    return-void
.end method

.method public setDocumentsPicker(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->isDocumentsPicker:Z

    return-void
.end method

.method public setInitialSearchString(Ljava/lang/String;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->initialSearchString:Ljava/lang/String;

    return-void
.end method

.method public setLayoutViews(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Lorg/telegram/ui/Components/EditTextEmoji;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    .line 1217
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 1218
    iput-object p5, p0, Lorg/telegram/ui/PhotoPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 1219
    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    .line 1220
    iput-object p4, p0, Lorg/telegram/ui/PhotoPickerActivity;->shadow:Landroid/view/View;

    const/4 p1, 0x0

    .line 1221
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->needsBottomLayout:Z

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 0

    .line 1440
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    .line 1441
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowOrder:Z

    if-lez p1, :cond_0

    .line 1442
    iget p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1443
    iput p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->maxSelectedPhotos:I

    :cond_0
    return-void
.end method

.method public setSearchDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchDelegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivitySearchDelegate;

    return-void
.end method

.method public updatePhotosButton(I)V
    .locals 10

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1553
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1555
    :goto_0
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/PhotoPickerActivity;->showCommentTextView(ZZ)Z

    return-void

    .line 1557
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1558
    :goto_1
    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/PhotoPickerActivity;->showCommentTextView(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1561
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1562
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v5, 0x3f666666    # 0.9f

    const v6, 0x3f8ccccd    # 1.1f

    if-ne p1, v3, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v5

    :goto_2
    const/4 v8, 0x2

    .line 1563
    new-array v9, v8, [F

    aput v7, v9, v1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v9, v3

    invoke-static {v2, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-ne p1, v3, :cond_4

    move v5, v6

    .line 1564
    :cond_4
    new-array p1, v8, [F

    aput v5, p1, v1

    aput v7, p1, v3

    invoke-static {v4, v9, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v1

    aput-object p1, v4, v3

    .line 1562
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1565
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb4

    .line 1566
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1567
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1569
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
