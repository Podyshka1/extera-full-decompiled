.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iput p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$3:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    iput-object p5, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$4:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$1:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$3:Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda55;->f$4:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$hsTA_fZ3GR-6sVQb8CZVfvuz5AY(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
