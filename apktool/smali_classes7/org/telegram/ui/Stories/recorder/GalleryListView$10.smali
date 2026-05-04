.class Lorg/telegram/ui/Stories/recorder/GalleryListView$10;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$10;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/high16 p4, 0x40800000    # 4.0f

    .line 383
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    const/4 v0, 0x0

    .line 384
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 385
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 386
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 387
    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
