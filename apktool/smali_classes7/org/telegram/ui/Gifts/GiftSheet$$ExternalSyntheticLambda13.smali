.class public final synthetic Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/GiftSheet;

.field public final synthetic f$1:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-wide p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;->f$3:Ljava/lang/Runnable;

    move-object v5, p1

    check-cast v5, Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;->$r8$lambda$X5Wa6LTeG4ehyAwYHXOATrTbi9c(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method
