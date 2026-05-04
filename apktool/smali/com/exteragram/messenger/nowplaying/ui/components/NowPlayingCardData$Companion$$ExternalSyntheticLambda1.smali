.class public final synthetic Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageReceiver;

.field public final synthetic f$1:Lorg/telegram/messenger/ImageLocation;

.field public final synthetic f$2:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

.field public final synthetic f$3:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/ImageLocation;

    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$2:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

    iput-object p4, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$3:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$2:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

    iget-object v3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;->f$3:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    invoke-static {v0, v1, v2, v3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->$r8$lambda$eJPagV89_NcEpOuQtzWvHvBuRkU(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V

    return-void
.end method
