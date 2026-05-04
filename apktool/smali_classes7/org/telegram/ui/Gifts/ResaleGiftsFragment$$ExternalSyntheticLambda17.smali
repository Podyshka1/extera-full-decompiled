.class public final synthetic Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->$r8$lambda$mTem4oAGyoFLTjFYO6SIMKzqEaA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I

    move-result p1

    return p1
.end method
