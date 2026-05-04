.class Lorg/telegram/ui/Stories/recorder/GallerySheet$1;
.super Lorg/telegram/ui/Stories/recorder/GalleryListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/GallerySheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZLjava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/GallerySheet;

    iput-object p10, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;->val$title:Ljava/lang/String;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Stories/recorder/GalleryListView;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;->val$title:Ljava/lang/String;

    return-object v0
.end method
