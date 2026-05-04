.class public final synthetic Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

.field public final synthetic f$1:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

.field public final synthetic f$2:Lorg/telegram/messenger/ImageLocation;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;->f$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;->f$1:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method


# virtual methods
.method public final didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;->f$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;->f$1:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/ImageLocation;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->$r8$lambda$gAuWKsdeEwaKjnRsh2r6C9g7BQ0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public synthetic didSetImageBitmap(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$didSetImageBitmap(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$onAnimationReady(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
