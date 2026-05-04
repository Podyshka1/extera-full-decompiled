.class Lorg/telegram/ui/Stories/recorder/GalleryListView$4;
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

    .line 199
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$4;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/high16 p2, 0x40a00000    # 5.0f

    .line 202
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
