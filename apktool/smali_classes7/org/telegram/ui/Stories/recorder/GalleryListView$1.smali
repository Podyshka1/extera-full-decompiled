.class Lorg/telegram/ui/Stories/recorder/GalleryListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
