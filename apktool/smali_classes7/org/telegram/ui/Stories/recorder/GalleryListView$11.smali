.class Lorg/telegram/ui/Stories/recorder/GalleryListView$11;
.super Lorg/telegram/ui/Components/FlickerLoadingView;
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

    .line 393
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$11;->this$0:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getColumnsCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
