.class public Lorg/telegram/ui/PhotoViewer$EditState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditState"
.end annotation


# instance fields
.field public averageDuration:J

.field public cropState:Lorg/telegram/messenger/MediaController$CropState;

.field public croppedMediaEntities:Ljava/util/ArrayList;

.field public croppedPaintPath:Ljava/lang/String;

.field public mediaEntities:Ljava/util/ArrayList;

.field public paintPath:Ljava/lang/String;

.field public savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1977
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->paintPath:Ljava/lang/String;

    .line 1978
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 1979
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 1980
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->mediaEntities:Ljava/util/ArrayList;

    .line 1981
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->croppedPaintPath:Ljava/lang/String;

    .line 1982
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->croppedMediaEntities:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 1983
    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$EditState;->averageDuration:J

    return-void
.end method
