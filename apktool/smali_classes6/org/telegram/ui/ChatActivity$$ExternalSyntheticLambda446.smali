.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Boolean;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public final synthetic f$4:Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;ILjava/lang/Boolean;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$2:Ljava/lang/Boolean;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$3:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$4:Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$0:Lorg/telegram/ui/ChatActivity;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$2:Ljava/lang/Boolean;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$3:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda446;->f$4:Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$3MV_RA5cnH1n80otqcv_h9px51g(Lorg/telegram/ui/ChatActivity;ILjava/lang/Boolean;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;)V

    return-void
.end method
