.class public Lorg/telegram/messenger/MediaController$AlbumEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public photosByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public videoOnly:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Landroid/util/SparseArray;

    .line 215
    iput p1, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    .line 216
    iput-object p2, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-void
.end method


# virtual methods
.method public addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
