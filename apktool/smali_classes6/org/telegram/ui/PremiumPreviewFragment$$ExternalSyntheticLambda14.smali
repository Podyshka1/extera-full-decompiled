.class public final synthetic Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PremiumPreviewFragment;

.field public final synthetic f$1:Lorg/telegram/ui/PremiumFeatureCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/PremiumFeatureCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iput-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/ui/PremiumFeatureCell;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda14;->f$1:Lorg/telegram/ui/PremiumFeatureCell;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;->$r8$lambda$LgbcFJTwQExXORqclMiba8kI6Do(Lorg/telegram/ui/PremiumPreviewFragment;Lorg/telegram/ui/PremiumFeatureCell;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method
