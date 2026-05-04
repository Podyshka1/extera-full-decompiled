.class public final synthetic Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/GiftSheet;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$3:Lorg/telegram/ui/Stars/StarGiftSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda24;->f$3:Lorg/telegram/ui/Stars/StarGiftSheet;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->$r8$lambda$S2mlcXh5adesNKaFjFxL2RntBis(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
