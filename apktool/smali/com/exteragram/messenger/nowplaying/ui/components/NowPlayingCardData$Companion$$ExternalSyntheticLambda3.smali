.class public final synthetic Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

.field public final synthetic f$2:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

.field public final synthetic f$3:Lorg/telegram/messenger/ImageLocation;

.field public final synthetic f$4:Lorg/telegram/messenger/ImageReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$1:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$2:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iput-object p4, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$3:Lorg/telegram/messenger/ImageLocation;

    iput-object p5, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$4:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$1:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$2:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iget-object v3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$3:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;->f$4:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->$r8$lambda$VnrhaFRJ58BSauScUmIU5bsvxkM(Landroid/graphics/Bitmap;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
