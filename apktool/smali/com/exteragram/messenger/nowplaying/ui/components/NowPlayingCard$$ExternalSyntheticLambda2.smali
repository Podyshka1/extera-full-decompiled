.class public final synthetic Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

.field public final synthetic f$1:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

.field public final synthetic f$2:Landroid/widget/FrameLayout;

.field public final synthetic f$3:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$0:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$1:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$2:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$3:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$0:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$1:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$$ExternalSyntheticLambda2;->f$3:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->$r8$lambda$ZOhhp4sU8FnleMRgj7I6S_dx9G0(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;Landroid/widget/FrameLayout;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
