.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$-hmVs_uGIXG_p_qmTK77otHeDcg(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method
