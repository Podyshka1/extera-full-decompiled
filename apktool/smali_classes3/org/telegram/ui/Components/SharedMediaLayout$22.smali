.class Lorg/telegram/ui/Components/SharedMediaLayout$22;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    .line 3069
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 3072
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    .line 3073
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 3074
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3075
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3076
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isFirstRow(I)Z

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-nez p3, :cond_0

    .line 3077
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 3079
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3081
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_1
    iput v1, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 3082
    :cond_2
    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p3, :cond_6

    .line 3083
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 3084
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$22;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    const/4 v0, 0x1

    if-ge p3, p4, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    .line 3085
    :goto_2
    iput-boolean v2, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isTop:Z

    .line 3086
    rem-int/2addr p3, p4

    if-nez p3, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    iput-boolean v2, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isFirst:Z

    sub-int/2addr p4, v0

    if-ne p3, p4, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    .line 3087
    :goto_4
    iput-boolean v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isLast:Z

    .line 3088
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3089
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3090
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3091
    iput v1, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 3093
    :cond_6
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3094
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3095
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3096
    iput v1, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
