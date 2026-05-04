.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$PDJfWmBmGvKYZ8TBfjE3NkqcNk4(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
