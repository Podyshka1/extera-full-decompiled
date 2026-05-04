.class public final synthetic Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Business/ChatbotsActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    iput-object p2, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$3:[I

    iput-object p5, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/ui/Business/ChatbotsActivity;

    iget-object v1, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$3:[I

    iget-object v4, p0, Lorg/telegram/ui/Business/ChatbotsActivity$$ExternalSyntheticLambda23;->f$4:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Business/ChatbotsActivity;->$r8$lambda$bTDeJBGrUzbdELEbPdfXkpjxFcE(Lorg/telegram/ui/Business/ChatbotsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[ILjava/util/ArrayList;)V

    return-void
.end method
