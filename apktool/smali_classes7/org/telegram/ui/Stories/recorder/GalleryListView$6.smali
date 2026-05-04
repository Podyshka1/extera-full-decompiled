.class Lorg/telegram/ui/Stories/recorder/GalleryListView$6;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
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

    .line 303
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetonBackClickListener(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetonBackClickListener(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$fgetdropDownAlbums(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;

    move-result-object v2

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->-$$Nest$mselectAlbum(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    :cond_1
    return-void
.end method
