.class public final synthetic Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/GiftSheet;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$1:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-object p5, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Gifts/GiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$1:Landroid/content/Context;

    iget v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet;->$r8$lambda$4N1pFkCrEvN4Jez2JRLEHgXdGPU(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Ljava/lang/Runnable;)V

    return-void
.end method
